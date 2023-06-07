
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
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l1 l0)) )
(assert (or (= l1 Nil) (is-Cons l1) (= l1 l2) (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (and (= l2 Nil) (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Nil l0) (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (= l3 l2) )
(check-sat)
