
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (is-Cons Nil) (= l0 l3)) )
(assert (not (= l3 l2)) )
(assert (and (= l2 Nil) (= l1 l2)) )
(assert (and (is-Cons Nil) (= l0 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (= l1 l1) (is-Nil l0) (= l2 l1) (is-Cons l1)) )
(assert (= l3 l1) )
(assert (and (is-Cons l1) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(check-sat)
