
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
(assert (and (is-Cons l1) (= l3 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (or (= l2 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 l3) )
(assert (or (is-Cons Nil) (= l3 l2) (= l1 l1) (= l0 l1)) )
(assert (or (= l3 Nil) (= l0 Nil) (is-Cons l3)) )
(assert (and (= l2 Nil) (is-Nil l3) (= l0 l2) (= l0 l3)) )
(assert (= l3 Nil) )
(check-sat)
