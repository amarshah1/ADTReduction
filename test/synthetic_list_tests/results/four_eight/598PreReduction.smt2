
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
(assert (not (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (is-Nil l1)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (is-Cons l1) (= l1 l0)) )
(assert (not (= l2 Nil)) )
(assert (or (= l2 Nil) (= l3 l0) (= l1 l1)) )
(assert (and (= l0 Nil) (is-Cons l3)) )
(assert (or (is-Cons Nil) (= l0 Nil)) )
(check-sat)
