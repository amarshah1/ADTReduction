
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
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (and (= l3 Nil) (= l3 l1)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(check-sat)
