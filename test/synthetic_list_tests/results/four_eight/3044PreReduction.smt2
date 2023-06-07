
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
(assert (is-Cons l3) )
(assert (is-Nil l3) )
(assert (and (is-Nil l3) (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (and (= l0 l3) (= l0 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l2 l1) (= l1 l3)) )
(assert (is-Cons l1) )
(check-sat)
