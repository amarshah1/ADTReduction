
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
(assert (not (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l0 l3) (= l2 l3) (is-Cons l2)) )
(assert (= l2 l1) )
(assert (or (= l0 l1) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (not (is-Cons l1)) )
(assert (or (= l1 Nil) (is-Nil l1) (= l2 Nil) (is-Cons l0)) )
(assert (and (= l2 l2) (is-Cons Nil) (= l2 Nil)) )
(check-sat)
